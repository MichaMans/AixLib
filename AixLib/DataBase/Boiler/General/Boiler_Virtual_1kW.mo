within AixLib.DataBase.Boiler.General;
record Boiler_Virtual_1kW "Boiler virtual 1kW"
  extends BoilerTwoPointBaseDataDefinition(
    name="VirtualBoiler_1kW",
    volume=0.00076,
    pressureDrop=10218000000,
    Q_nom=1000,
    Q_min=100,
    eta=[0.3,0.93; 1.0,0.93]);
    annotation (Documentation(revisions="<html>
<ul>
<li><i>December 08, 2016&nbsp;</i> by Moritz Lauster:<br/>Adapted to AixLib
conventions</li>
<li><i>July 6, 2006&nbsp;</i>by Ana Constantin:<br/>implemented.</li>
</ul>
</html>", info="<html>
<p><h4><font color=\"#008000\">Overview</font></h4></p>
<p>
Virtual boiler with 1 kW power output.
</p>
</html>"));
end Boiler_Virtual_1kW;
