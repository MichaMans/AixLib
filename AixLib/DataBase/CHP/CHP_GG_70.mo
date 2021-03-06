within AixLib.DataBase.CHP;
record CHP_GG_70 "GG 70 : Sokratherm"
  extends CHPBaseDataDefinition(
    vol={3e-3},
    data_CHP=[0,0,0,0,0; 50,34,69,122,12.2; 75,52,88,159,15.9; 100,70,114,204,
        20.4],
    maxTFlow=363.15,
    maxTReturn=343.15,
    DPipe=0.1);

  annotation (Documentation(info="<html>
<p><h4><font color=\"#008000\">Overview</font></h4></p>
<p>Sokratherm BHKW GG 70 </p>
</html>",
        revisions="<html>
<p><ul>
<li><i>August 13, 2013&nbsp;</i> by Ole Odendahl:<br/>Added reference</li>
</ul></p>
</html>"));
end CHP_GG_70;
