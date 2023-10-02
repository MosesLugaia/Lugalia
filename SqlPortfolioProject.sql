--Maximum deaths per continent
select continent,Max(cast(new_cases as int)) as MaxCases
from CovidDeaths
where continent is not null
group by continent
order by 2 desc
--where location like ('%Kenya%') and total_cases < 50


--Top Ten Data
select top 10 *
from CovidDeaths


--joinining CovidDeaths table and CovidVaccinations table
select dea.continent,dea.location,dea.date,dea.population,vac.new_vaccinations
from CovidDeaths dea
join CovidVaccinations vac
on dea.location = vac.location
and dea.date = vac.date
--where vac.new_vaccinations is not null


--TempTable
Drop Table if exists #NewCovid
Create Table #NewCovid
(Continent nvarchar,
 location nvarchar,
 date datetime,
 popuation numeric,
 new_vaccinations numeric)


 Select * from #NewCovid
 




