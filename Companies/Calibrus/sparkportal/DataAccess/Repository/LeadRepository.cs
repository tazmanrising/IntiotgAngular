﻿using Calibrus.SparkPortal.DataAccess.Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Calibrus.SparkPortal.DataAccess.Repository
{
    public class LeadRepository : Repository<Lead>
    {
        public LeadRepository(SparkPortalDataEntities ctx) : base(ctx) 
        {
        }
    }
}
