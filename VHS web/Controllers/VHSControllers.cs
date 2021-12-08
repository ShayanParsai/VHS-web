using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace VHS_web.Controllers
{
    [Route("api/VHS")]
    [ApiController]
    public class VHSControllers : ControllerBase
    {
        [HttpGet]
        [Route("/Status")]
        public void get_status()
        {
            
        }

        [HttpPost]
        [Route("/Status")]
        public void post_status()
        {
            
        }

        [HttpPost]
        [Route("/PostAlarm")]

        [HttpPost]
        [Route("/GetPosition")]

        [HttpGet]
        [Route("/Auth")]

        [HttpGet]
        [Route("/GetCustomer")]

        [HttpGet]
        [Route("/Validate/")]

    }       

}
