<form method="POST" class="iss-form iss-calendar" name="formCalendar" id="formCalendar">
<div class="iss-calendar__layout">
  <aside class="iss-calendar__sidebar">
    <div id="calendar_buttonbox" class="iss-calendar__actions">
      <button type="button" class="button primary" id="calendar_newevent"><i class="ti ti-plus"></i>&nbsp;{$LBL_CREATE_EVENT}</button>
    </div>
    <div id="calendar_datepick"></div>
    <section id="calendar_ical_links" class="iss-calendar__export">
      <h2 class="iss-calendar__export-title">{$LBL_EXPORT_CALENDAR}</h2>
      <a href="/rest.php/{$module_name}/CalendarEvent?format=ical">
        <i class="ti ti-download"></i>&nbsp;{$LBL_LINK_ICAL}
      </a>
    </section>
  </aside>
  <div class="iss-calendar__main">
    <div id="calendar_main"></div>
  </div>
</div>
{* Los siguientes campos de formulario definen la fecha de inicio del calendario *}
<input type="hidden" name="server_year" value="{$SERVER_YEAR}" />
<input type="hidden" name="server_month" value="{$SERVER_MONTH}" />
{* El siguiente campo de formulario sólo se asigna al pedir action=display *}
<input type="hidden" name="event_id" value="{$EVENT_ID}" />
</form>

<div id="calendar_eventdialog" style="display: none;">
{$EVENT_DIALOG}
</div>

<script type="text/javascript">
var arrLang_main = {$ARRLANG_MAIN};
var arrLang_calendar = {$ARRLANG_CALENDAR};
</script>
