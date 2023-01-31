using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using StudentManagement.DBContexts;
using StudentManagement.Entities;
using StudentManagement.Models;
using StudentManagement.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace StudentManagement.Controllers
{
    public class StudentController : Controller
    {
        private readonly IUserService userService;
        private readonly UserManager<User> userManager;
        private readonly StudentManagementContext context;
        private static User user = new User();

        public StudentController(IUserService userService,
                                 UserManager<User> userManager,
                                 StudentManagementContext context)
        {
            this.userService = userService;
            this.userManager = userManager;
            this.context = context;
        }
        public IActionResult Index(string StudentName, int? SchoolYearId, int? EventId, string SkillName)
        {
            var stu = from m in context.Users select m;
            if (!string.IsNullOrEmpty(StudentName))
            {
                stu = stu.Where(s => s.UserName!.Contains(StudentName));
            }
            if (SchoolYearId != null)
            {
                stu = stu.Where(a => a.UserSchoolYears.OrderByDescending(c => c.SchoolYearId).First().SchoolYear.SchoolYearId == SchoolYearId);
            }
            if (EventId != null)
            {
               stu = stu.Where(a => a.Events.OrderByDescending(c => c.EventId).First().ListEvent.ListEventId == EventId);
            }

            var users = new Student()
            {
                Users = stu.Where(s => s.StudentCode != null).OrderBy(s => s.StudentCode).Include(p => p.Events).Include(p => p.Messages).Include(p => p.UserSchoolYears).ToList()
            };
            
            
            
            var skills = (from u in stu
                          join e in context.Events on u.Id equals e.UserId
                          join m in context.Messages on e.EventId equals m.EventId
                          join ms in context.MessagesSkills on m.MessagesId equals ms.MessagesId
                          join s in context.Skills on ms.SkillId equals s.SkillId
                          where u.Id == e.UserId
                          select new Student()
                          {
                              UserId = u.Id,
                              SkillName = s.SkillName,
                              Style = s.Style
                          }).Distinct().ToList();

            if (!String.IsNullOrEmpty(SkillName))
            {
                skills = (List<Student>)skills.Where(s => s.SkillName!.Contains(SkillName));
            }
            ViewBag.listSkills = skills;
            ViewData["ListEventId"] = new SelectList(context.ListEvents, "ListEventId", "ListEventName");
            ViewData["SchoolYearId"] = new SelectList(context.SchoolYears, "SchoolYearId", "SchoolYearName");

            return View(users);
        }
    }
}
