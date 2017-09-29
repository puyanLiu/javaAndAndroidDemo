.class public Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "TransparentActivity.java"


# static fields
.field public static final ContactsRequestCode:I = 0x3

.field public static final PAGE_TYPE_ADD_FRIEND_DIALOG:I = 0x2

.field public static final PAGE_TYPE_CONTACTLIST:I = 0x0

.field public static final PAGE_TYPE_SECRCH_CONTACT:I = 0x1

.field public static final PAGE_TYPE_TAG:Ljava/lang/String; = "displayType"

.field public static final SEARCH_INPUT_TAG:Ljava/lang/String; = "search_input"

.field public static final SEARCH_REMIND_TAG:Ljava/lang/String; = "search_input_remind"

.field public static final SEARCH_SCHEME_TAG:Ljava/lang/String; = "search_input_scheme"

.field public static final TAG_ADD_FRIEND:Ljava/lang/String; = "add_friend"


# instance fields
.field private a:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

.field private b:Landroid/os/Bundle;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field public mContactsService:Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->b:Landroid/os/Bundle;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->d:Z

    .line 56
    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->e:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->f:I

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->a:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->d:Z

    return v0
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 179
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 180
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->finish()V

    .line 181
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->mContactsService:Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 182
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 183
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "data1"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "display_name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "data1"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "display_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    new-instance v4, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    iput-object v2, v4, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    iput-object v0, v4, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->phoneNo:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->mContactsService:Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;->setResultAccount(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->mContactsService:Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;->setResultAccount(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v4, "SocialSdk_Sdk"

    const-string/jumbo v5, "\u8bfb\u53d6\u624b\u673a\u8054\u7cfb\u4eba\u5931\u8d25"

    invoke-interface {v2, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->mContactsService:Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;->setResultAccount(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->mContactsService:Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->mContactsService:Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;->setResultAccount(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->mContactsService:Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;->setResultAccountList(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->transparent_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->setContentView(I)V

    .line 64
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 65
    const-class v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->mContactsService:Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;

    .line 66
    const-class v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->a:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 68
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    const-string/jumbo v1, "displayType"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->f:I

    .line 75
    :goto_0
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->f:I

    if-ne v1, v3, :cond_3

    .line 76
    const-string/jumbo v1, "search_input"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->c:Ljava/lang/String;

    .line 77
    const-string/jumbo v1, "search_input_remind"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->d:Z

    .line 78
    const-string/jumbo v1, "search_input_scheme"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->e:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->a:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->a:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->getContactPickerCallback()Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;->onAccountReturned(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->a:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->clearContactPickerCallback()V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->finish()V

    .line 92
    :cond_1
    :goto_1
    return-void

    .line 72
    :cond_2
    iput v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->f:I

    goto :goto_0

    .line 89
    :cond_3
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->f:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 90
    const-string/jumbo v1, "add_friend"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->b:Landroid/os/Bundle;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 96
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    .line 97
    iget v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->f:I

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 99
    :pswitch_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/ca;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ca;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 124
    iput v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->f:I

    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->mContactsService:Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->mContactsService:Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;->setResultAccount(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    .line 128
    :goto_1
    iput v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->f:I

    goto :goto_0

    .line 127
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/4 v3, 0x3

    invoke-interface {v1, v2, v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startExtActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->mContactsService:Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;->setResultAccount(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    goto :goto_1

    .line 131
    :pswitch_2
    iput v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->f:I

    .line 132
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/cc;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->e:Ljava/lang/String;

    invoke-direct {v0, p0, p0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/cc;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;Lcom/alipay/mobile/framework/app/ui/BaseActivity;Ljava/lang/String;)V

    .line 157
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->d:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->setShowErrorDialog(Z)V

    .line 158
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->startQuery(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
