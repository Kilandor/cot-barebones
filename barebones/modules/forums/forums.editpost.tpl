<!-- BEGIN: MAIN -->
    <h3>{FORUMS_EDITPOST_PAGETITLE}</h3>
    <!-- IF {FORUMS_EDITPOST_SUBTITLE} --><p class="marginbottom10 small">{FORUMS_EDITPOST_SUBTITLE}</p><!-- ENDIF -->
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
    <form action="{FORUMS_EDITPOST_SEND}" method="post" name="editpost">
      <table class="table">
        <!-- BEGIN: FORUMS_EDITPOST_FIRSTPOST -->
        <tr>
          <td>{PHP.L.forums_topic}:</td>
          <td>{FORUMS_EDITPOST_TOPICTITTLE}</td>
        </tr>
        <tr>
          <td>{PHP.L.Description}:</td>
          <td>{FORUMS_EDITPOST_TOPICDESCRIPTION}</td>
        </tr>
        <!-- END: FORUMS_EDITPOST_FIRSTPOST -->
        <tr>
          <td colspan="2">{FORUMS_EDITPOST_TEXT}</td>
        </tr>
        <!-- BEGIN: POLL -->
        <tr>
          <script type="text/javascript" src="{PHP.cfg.modules_dir}/polls/js/polls.js"></script>
          <script type="text/javascript">
            var ansMax = {PHP.cfg.polls.max_options_polls};
          </script>
          <td>{PHP.L.poll}:</td>
          <td>
            {EDIT_POLL_IDFIELD}
            {EDIT_POLL_TEXT}
          </td>
        </tr>
        <tr>
          <td>{PHP.L.Options}:</td>
          <td>
            <!-- BEGIN: OPTIONS -->
            <div class="polloptiondiv">
              {EDIT_POLL_OPTION_TEXT}
              <input name="deloption" value="x" type="button" class="deloption" style="display:none;" />
            </div>
            <!-- END: OPTIONS -->
            <input id="addoption" name="addoption" value="{PHP.L.Add}" class="btn" type="button" style="display:none;" /></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>{EDIT_POLL_MULTIPLE}</td>
        </tr>
        <!-- BEGIN: EDIT -->
        <tr>
          <td>&nbsp;</td>
          <td>{EDIT_POLL_LOCKED} {EDIT_POLL_RESET} {EDIT_POLL_DELETE}</td>
        </tr>
        <!-- END: EDIT -->
        <!-- END: POLL -->
        <!-- BEGIN: FORUMS_EDITPOST_TAGS -->
        <tr>
          <td>{PHP.L.Tags}:</td>
          <td>{FORUMS_EDITPOST_FORM_TAGS} ({FORUMS_EDITPOST_TOP_TAGS_HINT})</td>
        </tr>
        <!-- END: FORUMS_EDITPOST_TAGS -->
        <tr>
          <td colspan="2" class="textcenter">
            <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
          </td>
        </tr>
      </table>
    </form>
<!-- END: MAIN -->