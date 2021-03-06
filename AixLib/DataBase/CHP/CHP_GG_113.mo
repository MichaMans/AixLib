within AixLib.DataBase.CHP;
record CHP_GG_113 "GG 113 : Sokratherm"
  extends CHPBaseDataDefinition(
    vol={3e-3},
    data_CHP=[0,0,0,0,0; 50,55,110,189,18.9; 75,84,148,263,26.3; 100,113,180,
        328,32.8],
    maxTFlow=363.15,
    maxTReturn=343.15,
    DPipe=0.1);

  annotation (Documentation(info="<html>
<p><h4><font color=\"#008000\">Overview</font></h4></p>
<p>Sokratherm BHKW GG 113 </p>
</html>",
        revisions="<html>
<p><ul>
<li><i>August 13, 2013&nbsp;</i> by Ole Odendahl:<br/>Added reference</li>
</ul></p>
</html>"));
end CHP_GG_113;
