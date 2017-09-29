.class public Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "ShareDialogActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "layout_empty"
.end annotation


# static fields
.field public static final EXTRA_USER_ID:Ljava/lang/String; = "userId"

.field public static final EXTRA_USER_TYPE:Ljava/lang/String; = "userType"


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

.field private b:Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

.field private c:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

.field private d:Lcom/alipay/mobile/personalbase/model/ShareModel;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->a:Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->b:Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "shareContent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/model/ShareModel;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->d:Lcom/alipay/mobile/personalbase/model/ShareModel;

    .line 42
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 43
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    .line 42
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->c:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->c:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->getShareSelectCallback()Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->a:Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->c:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->getShareResultCallback()Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->b:Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    .line 46
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->e:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "userType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->f:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->d:Lcom/alipay/mobile/personalbase/model/ShareModel;

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->finish()V

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->d:Lcom/alipay/mobile/personalbase/model/ShareModel;

    new-instance v2, Lcom/alipay/mobile/socialsdk/chat/ui/a;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialsdk/chat/ui/a;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)V

    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/ui/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/chat/ui/c;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->setOnClickListener(Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;)Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->show()V

    .line 75
    :cond_1
    return-void

    .line 51
    :pswitch_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogText;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogText;-><init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogImage;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogImage;-><init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;-><init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWebSubTitle;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWebSubTitle;-><init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;-><init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected callBackShareSucceed()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/ui/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/chat/ui/b;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)V

    .line 110
    const-wide/16 v2, 0x1f4

    .line 102
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->finish()V

    .line 151
    invoke-virtual {p0, v0, v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->overridePendingTransition(II)V

    .line 152
    return-void
.end method

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

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->c:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->c:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->clearCallback()V

    .line 160
    :cond_0
    return-void
.end method

.method protected sendShareContent(Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getImageByte()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getImageByte()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getThumb()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 84
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 85
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;-><init>()V

    .line 86
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->isSync:Z

    .line 87
    invoke-virtual {p1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getImageByte()[B

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->fileData:[B

    .line 88
    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->uploadImage(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;->getCloudId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;->getCloudId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setThumb(Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->f:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->shareMessage(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->dismissProgressDialog()V

    .line 95
    const-string/jumbo v0, "\u5206\u4eab\u6210\u529f"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->toast(Ljava/lang/String;I)V

    .line 96
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->callBackShareSucceed()V

    .line 97
    return-void
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
