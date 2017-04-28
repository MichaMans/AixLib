within AixLib.Building.Components.Examples.Weather;
model WeatherCompare "Compares TRY and TMY3 weather data readers"
  import AixLib;
  extends Modelica.Icons.Example;
  Components.Weather.Weather weather(Cloud_cover = true, Wind_dir = true, Wind_speed = true, Air_temp = true, Air_press = true, Mass_frac = true, Rel_hum = true, Sky_rad = true, Ter_rad = true,
    fileName="D:/GIT/AixLib/AixLib/Resources/WeatherData/TRY2010_12_Jahr_Modelica-Library.txt",
    SOD=DataBase.Weather.SurfaceOrientation.SurfaceOrientationData_N_E_S_W_Hor(),
    redeclare model RadOnTiltedSurface =
        AixLib.Building.Components.Weather.RadiationOnTiltedSurface.RadOnTiltedSurf_Perez)
                                 "TRY weather data reader"                                                                                                                                                      annotation(Placement(transformation(extent = {{-60, 16}, {6, 60}})));

  AixLib.BoundaryConditions.WeatherData.ReaderTMY3 weaDat(filNam="D:/GIT/AixLib/AixLib/Resources/WeatherData/DEU_BW_Mannheim_107290_TRY2010_12_Jahr_BBSR.mos",
      calTSky=AixLib.BoundaryConditions.Types.SkyTemperatureCalculation.HorizontalRadiation,
    pAtmSou=AixLib.BoundaryConditions.Types.DataSource.File)
    "TMY3 weather data reader"
    annotation (Placement(transformation(extent={{-60,-60},{-20,-20}})));
  AixLib.BoundaryConditions.SolarIrradiation.DiffusePerez
                                                   HDifTil[5](
    each outSkyCon=true,
    each outGroCon=true,
    til={1.5707963267949,1.5707963267949,1.5707963267949,1.5707963267949,0},
    each lat=0.86393797973719,
    azi={3.1415926535898,1.5707963267949,0,-1.5707963267949,0})
    "Calculates diffuse solar radiation on titled surface for all directions"
    annotation (Placement(transformation(extent={{36,-60},{56,-40}})));

  AixLib.BoundaryConditions.SolarIrradiation.DirectTiltedSurface
                                                          HDirTil[5](
    til={1.5707963267949,1.5707963267949,1.5707963267949,1.5707963267949,0},
    each lat=0.86393797973719,
    azi={3.1415926535898,1.5707963267949,0,-1.5707963267949,0})
    "Calculates direct solar radiation on titled surface for all directions"
    annotation (Placement(transformation(extent={{36,-28},{56,-8}})));
  AixLib.BoundaryConditions.WeatherData.Bus
                                     weaBus "Weather data bus"
    annotation (Placement(
    transformation(extent={{30,-98},{64,-66}}),  iconTransformation(
    extent={{-70,-12},{-50,8}})));
equation

  connect(weaDat.weaBus, HDirTil[1].weaBus) annotation (Line(
      points={{-20,-40},{8,-40},{8,-18},{36,-18}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTil[2].weaBus) annotation (Line(
      points={{-20,-40},{8,-40},{8,-18},{36,-18}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTil[3].weaBus) annotation (Line(
      points={{-20,-40},{8,-40},{8,-18},{36,-18}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTil[4].weaBus) annotation (Line(
      points={{-20,-40},{8,-40},{8,-18},{36,-18}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTil[5].weaBus) annotation (Line(
      points={{-20,-40},{8,-40},{8,-18},{36,-18}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTil[1].weaBus) annotation (Line(
      points={{-20,-40},{8,-40},{8,-50},{36,-50}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTil[2].weaBus) annotation (Line(
      points={{-20,-40},{8,-40},{8,-50},{36,-50}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTil[3].weaBus) annotation (Line(
      points={{-20,-40},{8,-40},{8,-50},{36,-50}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTil[4].weaBus) annotation (Line(
      points={{-20,-40},{8,-40},{8,-50},{36,-50}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTil[5].weaBus) annotation (Line(
      points={{-20,-40},{8,-40},{8,-50},{36,-50}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, weaBus) annotation (Line(
      points={{-20,-40},{8,-40},{8,-82},{47,-82}},
      color={255,204,51},
      thickness=0.5), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  annotation(experiment(StopTime = 3.1536e+007, Interval = 3600, Algorithm = "Lsodar"),Documentation(info = "<html>
 <h4><span style=\"color:#008000\">Overview</span></h4>
 <p>A test to see if the <a href=\"AixLib.Building.Components.Weather.Weather\">weather</a> model is functioning correctly. A input file containing weather data (TRY standard) has to be provided and linked to. Check out the default path in order to set the path correctly considering the current directory.</p>
 </html>", revisions = "<html>
 <ul>
 <li><i>May 28, 2013&nbsp;</i> by Ole Odendahl:<br/>Formatted documentation appropriately, Added SkyTemp model to simulation.</li>
 <li><i>December 13, 2011&nbsp;</i> by Ana Constantin:<br/>Implemented.</li>
 </ul>
 </html>"));
end WeatherCompare;
