<form method='POST' style='margin-bottom:0;' name='formCalendar' id='formCalendar'>
<div class="iss-form" style="display:flex; gap:18px; align-items:flex-start; max-width:none;">
  <div id="calendar_toolbar" style="width:220px; flex:0 0 220px;">
    <div id="calendar_buttonbox" style="margin: 0 0 10px;">
      <button type='button' class='button' id="calendar_newevent" ><i class="ti ti-plus"></i>&nbsp;{$LBL_CREATE_EVENT}</button>
    </div>
    <div id="calendar_datepick">
    </div>
    <div id="calendar_ical_links" style="background: var(--iss-surface); border: 1px solid var(--iss-border); border-radius: var(--iss-radius); margin-top: 10px;">
      <div style="background: var(--iss-surface-2); border-bottom: 1px solid var(--iss-border); border-radius: var(--iss-radius) var(--iss-radius) 0 0; padding: 10px 12px; font-size: 13px; font-weight: 600; color: var(--iss-text);">{$LBL_EXPORT_CALENDAR}</div>
      <div style="padding: 10px 12px;">
        <a href="/rest.php/{$module_name}/CalendarEvent?format=ical" style="text-decoration: none; color: var(--iss-brand-ink); display: inline-flex; align-items: center; gap: 6px;">
          <span><i class="ti ti-download"></i>&nbsp;{$LBL_LINK_ICAL}</span>
        </a>
      </div>
    </div>
  </div>
  <div style="flex:1 1 auto; min-width:0;">
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
</script>
