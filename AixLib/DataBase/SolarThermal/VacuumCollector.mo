within AixLib.DataBase.SolarThermal;
record VacuumCollector "Properties of a vacuum collector"
  extends SolarThermalBaseDataDefinition(eta_zero = 0.75, c1 = 2, c2 = 0.005);
  annotation(Documentation(info = "<html>
 <h4><span style=\"color:#008000\">Overview</span></h4>
 <p>Simple Vacuum Tube Collector; Values are assumptions; For real values of collectors see <a href=\"http://www.solarenergy.ch/index.php?id=111&amp;no_cache=1\">http://www.solarenergy.ch/index.php?id=111&amp;no_cache=1</a></p>
 <h4><span style=\"color:#008000\">Level of Development</span></h4>
 <p><img src=\"modelica://AixLib/Resources/Images/Stars/stars3.png\" alt=\"stars: 3 out of 5\"/></p>
 <h4><span style=\"color:#008000\">References</span></h4>
 <p>Record is used in model <a href=\"AixLib.HVAC.HeatGeneration.SolarThermal\">AixLib.HVAC.HeatGeneration.SolarThermal</a>.</p>
 </html>", revisions = "<html>
 <p>October 2013, Marcus Fuchs</p>
 <ul>
 <li>implemented</li>
 </ul>
 </html>"));
end VacuumCollector;
