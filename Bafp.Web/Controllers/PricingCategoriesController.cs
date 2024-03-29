﻿using System.Threading.Tasks;
using AutoMapper;
using Bafp.Contracts;
using Bafp.Contracts.Models;
using Bafp.Logic.Services;
using Bafp.Web.Models;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using Serilog;

namespace Bafp.Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [EnableCors(Constants.PolicyNames.AllowUi)]
    public class PricingCategoriesController : SpControllerBase
    {
        public PricingCategoriesController(IDatabaseService databaseService, IMapper mapper) : base(databaseService,
            mapper, Log.ForContext<PricingCategoriesController>())
        {
        }

        [HttpPost]
        [Route("")]
        public Task<IActionResult> GetPricingCategories(GetPricingCategoriesRequest request) =>
            ExecuteSp<PricingCategory, GetPricingCategoriesResponse>(request ?? new GetPricingCategoriesRequest());
    }
}