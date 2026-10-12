<input type='hidden' name='id' value='{$ID}' />
<input type='hidden' name='type' value='{$TYPE}' />

<div class="iss-form">
  <div class="iss-form__toolbar">
    {if ($mode ne 'view') and ($TYPE ne 'internal') }
      <span class="iss-form__hint"><span class="iss-required">*</span> {$REQUIRED_FIELD}</span>
    {/if}
    <div class="iss-form__buttons">
      {if $Show}
          <input class="button" type="submit" name="save" value="{$SAVE}">
      {elseif $Edit}
          <input class="button" type="submit" name="edit" value="{$EDIT}">
      {elseif $Commit}
          <input class="button" type="submit" name="commit" value="{$SAVE}">
      {/if}
      <input class="button" type="submit" name="cancel" value="{$CANCEL}">
    </div>
  </div>

  <section class="iss-card">
    <div class="iss-card__body">
      <div class="iss-form__toolbar" style="margin:0 0 14px;">
        <label class="iss-inline-field">
          <input type="radio" name="address_book_options" id="new_contact" value="new_contact" {$check_new_contact} onclick="Activate_Option_Address_Book()" />
          {$new_contact}
        </label>
        <label class="iss-inline-field">
          <input type="radio" name="address_book_options" id="address_from_csv" value="address_from_csv" {$check_csv} onclick="Activate_Option_Address_Book()" />
          {$address_from_csv}
        </label>
      </div>

      <div class="iss-formgrid div_avatar_contact" id="tr_new_contact">
        {if $ShowImg}
          <div class="iss-field iss-field--full">
            <span class="iss-field__control"><img style='border-radius: 50%;' alt="image" src="index.php?menu={$MODULE_NAME}&action=getImage&type={$TYPE}&idPhoto={$idPhoto}&thumbnail=no&rawmode=yes"/></span>
          </div>
        {else}
          <div class="iss-field iss-field--full">
            <span class="iss-field__control"><img style='border-radius: 50%;' alt="image" src="modules/{$MODULE_NAME}/images/Icon-user.png"/></span>
          </div>
        {/if}
        <div class="iss-field">
          <span class="iss-field__label">{$name.LABEL}{if ($mode ne 'view') and ($TYPE ne 'internal') }&nbsp;<span class="iss-required">*</span>{/if}</span>
          <span class="iss-field__control">{$name.INPUT}</span>
        </div>
        {if $TYPE eq 'external'}
        <div class="iss-field">
          <span class="iss-field__label">{$last_name.LABEL}{if $mode ne 'view'}&nbsp;<span class="iss-required">*</span>{/if}</span>
          <span class="iss-field__control">{$last_name.INPUT}</span>
        </div>
        {/if}
        <div class="iss-field">
          <span class="iss-field__label">{$work_phone.LABEL}{if ($mode ne 'view') and ($TYPE ne 'internal') }&nbsp;<span id="span_phone" class="iss-required">*</span>{/if}</span>
          <span class="iss-field__control">{$work_phone.INPUT}</span>
        </div>
        {if $TYPE eq 'internal'}
        <div class="iss-field">
          <span class="iss-field__label">{$department.LABEL}</span>
          <span class="iss-field__control">{$department.INPUT}</span>
        </div>
        {/if}
        <div class="iss-field">
          <span class="iss-field__label">{$cell_phone.LABEL}</span>
          <span class="iss-field__control">{$cell_phone.INPUT}</span>
        </div>
        <div class="iss-field">
          <span class="iss-field__label">{$home_phone.LABEL}</span>
          <span class="iss-field__control">{$home_phone.INPUT}</span>
        </div>
        <div class="iss-field">
          <span class="iss-field__label">{$fax1.LABEL}</span>
          <span class="iss-field__control">{$fax1.INPUT}</span>
        </div>
        <div class="iss-field">
          <span class="iss-field__label">{$fax2.LABEL}</span>
          <span class="iss-field__control">{$fax2.INPUT}</span>
        </div>
        <div class="iss-field">
          <span class="iss-field__label">{$email.LABEL}</span>
          <span class="iss-field__control">{$email.INPUT}</span>
        </div>
        {if $TYPE eq 'internal'}
        <div class="iss-field">
          <span class="iss-field__label">{$im.LABEL}</span>
          <span class="iss-field__control">{$im.INPUT}</span>
        </div>
        {/if}
        <div class="iss-field">
          <span class="iss-field__label">{$province.LABEL}</span>
          <span class="iss-field__control">{$province.INPUT}</span>
        </div>
        <div class="iss-field">
          <span class="iss-field__label">{$city.LABEL}</span>
          <span class="iss-field__control">{$city.INPUT}</span>
        </div>
        <div class="iss-field iss-field--full">
          <span class="iss-field__label">{$address.LABEL}</span>
          <span class="iss-field__control">{$address.INPUT}</span>
        </div>
        <div class="iss-field">
          <span class="iss-field__label">{$company.LABEL}</span>
          <span class="iss-field__control">{$company.INPUT}</span>
        </div>
        <div class="iss-field">
          <span class="iss-field__label">{$company_contact.LABEL}</span>
          <span class="iss-field__control">{$company_contact.INPUT}</span>
        </div>
        <div class="iss-field">
          <span class="iss-field__label">{$contact_rol.LABEL}</span>
          <span class="iss-field__control">{$contact_rol.INPUT}</span>
        </div>
        <div class="iss-field iss-field--full">
          <span class="iss-field__label">{$notes.LABEL}</span>
          <span class="iss-field__control">{$notes.INPUT}</span>
        </div>
      {if ($EditW or $Commit or $Show)}
        <div class="iss-field">
          <span class="iss-field__label">{$picture.LABEL}</span>
          <span class="iss-field__control">{$picture.INPUT}</span>
        </div>
        {if $TYPE eq 'external'}
        <div class="iss-field">
          <span class="iss-field__label">&nbsp;</span>
          <span class="iss-field__control">
            <label class="iss-inline-field">
              <input type="radio" name="address_book_status" id="isPrivate" value="isPrivate" {$check_isPrivate} />
              {$private_contact}
            </label>
            <label class="iss-inline-field">
              <input type="radio" name="address_book_status" id="isPublic" value="isPublic" {$check_isPublic} />
              {$public_contact}
            </label>
          </span>
        </div>
        {/if}
      {/if}
      </div>

      <div class="iss-formgrid div_import_contacts" id="tr_from_csv">
        <div class="iss-field">
          <span class="iss-field__label">{$label_file}&nbsp;(file.csv){if $mode ne 'view'}&nbsp;<span class="iss-required">*</span>{/if}</span>
          <span class="iss-field__control">
            <input type='file' id='userfile' name='userfile'>
            <a href="?menu={$MODULE_NAME}&amp;action=download_csv&amp;rawmode=yes" name="link_download" style="margin-left:8px;">{$DOWNLOAD}</a>
          </span>
        </div>
      </div>

      <div class="iss-formgrid div_import_contacts" id="table_from_csv">
        <div class="iss-field iss-field--full">
          <span class="iss-field__help">{$HeaderFile}</span>
          <span class="iss-field__help" style="margin:0;">{$AboutContacts}</span>
        </div>
      </div>
    </div>
  </section>
</div>

{literal}
    <script type="text/javascript">
        Activate_Option_Address_Book();

        function Activate_Option_Address_Book()
        {
            var new_contact = document.getElementById('new_contact');
            var address_from_csv = document.getElementById('address_from_csv');
            if(new_contact.checked==true)
            {
                document.getElementById('tr_new_contact').style.display = '';
                document.getElementById('tr_from_csv').style.display = 'none';
                document.getElementById('table_from_csv').style.display = 'none';
            }
            else
            {
                document.getElementById('tr_new_contact').style.display = 'none';
                document.getElementById('tr_from_csv').style.display = '';
                document.getElementById('table_from_csv').style.display = '';
            }
        }
    </script>
{/literal}
