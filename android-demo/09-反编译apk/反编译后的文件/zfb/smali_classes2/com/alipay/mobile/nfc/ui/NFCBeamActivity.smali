.class public Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "NFCBeamActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

.field private f:Lcom/alipay/mobile/nfc/ui/NFCBeamActivity$HomeKeyReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
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

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 177
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->a(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/nfc/strategy/BusinessJumper;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->e:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->a(Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;)V

    .line 180
    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->a()V

    .line 182
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NFC/Beam"

    const-string/jumbo v2, "onCreate"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget v0, Lcom/alipay/mobile/nfc/R$layout;->l:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/nfc/app/LogAgent;->c()V

    .line 58
    sget v0, Lcom/alipay/mobile/nfc/R$id;->n:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->d:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity$1;-><init>(Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->e:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nfc/R$string;->h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->e:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/nfc/R$layout;->h:I

    iget-object v3, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->d:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nfc/R$drawable;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    sget v1, Lcom/alipay/mobile/nfc/R$drawable;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 59
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity$HomeKeyReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity$HomeKeyReceiver;-><init>(Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;B)V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->f:Lcom/alipay/mobile/nfc/ui/NFCBeamActivity$HomeKeyReceiver;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->f:Lcom/alipay/mobile/nfc/ui/NFCBeamActivity$HomeKeyReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->f:Lcom/alipay/mobile/nfc/ui/NFCBeamActivity$HomeKeyReceiver;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 69
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 70
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 75
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NFC/Beam"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onNewIntent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v0, "Key_beam_content"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "NFC/Beam"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "content:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "alipays-beam"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "loginid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "avatar"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "NFC/Beam"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "\u540d\u7247\u4fe1\u606f\u9519\u8bef"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    .line 86
    sget v0, Lcom/alipay/mobile/nfc/R$id;->N:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/alipay/mobile/nfc/R$id;->M:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "hideaccount"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/SecurityUtil;->accountHide(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/androidquery/AQuery;

    invoke-direct {v0, p0}, Lcom/androidquery/AQuery;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/alipay/mobile/nfc/R$id;->k:I

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    sget v1, Lcom/alipay/mobile/nfc/R$drawable;->g:I

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->image(I)Lcom/androidquery/AbstractAQuery;

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    sget v1, Lcom/alipay/mobile/nfc/R$id;->k:I

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->id(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    goto :goto_0
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
