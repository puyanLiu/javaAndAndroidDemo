.class public Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;
.super Landroid/support/v4/app/Fragment;
.source "BeijingBusCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private c:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/LinearLayout;

.field private p:Z

.field private q:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "NFC/BeijingBusCard"

    sput-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->a:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->p:Z

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;)Lcom/alipay/mobile/nfc/ui/NFCMainActivity;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->c:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->c:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/nfc/model/CardTypeEnum;->TransferCard:Lcom/alipay/nfc/model/CardTypeEnum;

    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardTypeEnum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Lcom/alipay/mobile/nfc/app/LogAgent;->e()V

    .line 188
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->c:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    const-class v2, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    const-string/jumbo v0, "APP_ID"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string/jumbo v2, "UPGRADE"

    if-eqz p2, :cond_0

    const/16 v0, 0xca

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->c:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 193
    return-void

    .line 191
    :cond_0
    const/16 v0, 0xc9

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    const-string/jumbo v1, "2013121000002322"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "can not find app: 2013121000002322"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "2013121000002322"

    invoke-direct {p0, v0, v4}, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDisplay(Z)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->a:Ljava/lang/String;

    const-string/jumbo v3, "\u5df2\u5b89\u88c5"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedUpgrade()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->a:Ljava/lang/String;

    const-string/jumbo v3, "\u9700\u8981\u66f4\u65b0"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->a:Ljava/lang/String;

    const-string/jumbo v3, "\u5df2\u7ecf\u662f\u6700\u65b0\u7248\u672c\uff0c\u542f\u52a8"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->c:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->c()V

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->c:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    new-array v1, v5, [Ljava/lang/String;

    sget-object v2, Lcom/alipay/nfc/model/CardTypeEnum;->TransferCard:Lcom/alipay/nfc/model/CardTypeEnum;

    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardTypeEnum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Lcom/alipay/mobile/nfc/app/LogAgent;->d()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "android.nfc.extra.TAG"

    iget-object v3, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->c:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v3}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "android.nfc.extra.TAG"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->a:Ljava/lang/String;

    const-string/jumbo v3, "\u672a\u5b89\u88c5"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;)V
    .locals 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->p:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment$4;-><init>(Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->p:Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 65
    check-cast p1, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->c:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    .line 66
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 240
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    .line 242
    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-static {v1}, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->a(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/nfc/strategy/BusinessJumper;

    move-result-object v1

    .line 243
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->a(Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;)V

    .line 244
    invoke-virtual {v1}, Lcom/alipay/mobile/nfc/strategy/BusinessJumper;->a()V

    .line 247
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "onCreateView"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->d:Landroid/view/LayoutInflater;

    .line 74
    sget v0, Lcom/alipay/mobile/nfc/R$layout;->d:I

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->e:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->e:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nfc/R$id;->K:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getImageBackButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment$1;-><init>(Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->e:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->p:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->f:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->r:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->g:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->q:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->h:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->P:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->i:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->S:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->j:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->Q:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->k:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->O:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->l:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->T:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->m:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->R:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->n:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/nfc/R$id;->e:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v2, Lcom/alipay/mobile/nfc/R$drawable;->d:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setBackgroundResource(I)V

    new-instance v2, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment$2;-><init>(Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/mobile/nfc/R$id;->o:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->o:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/alipay/mobile/nfc/strategy/NfcStrategy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment$3;-><init>(Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->q:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->c:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nfc/R$string;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->q:Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->d:Landroid/view/LayoutInflater;

    sget v3, Lcom/alipay/mobile/nfc/R$layout;->h:I

    iget-object v4, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->o:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->o:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->c:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b()Lcom/alipay/nfc/model/CardInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getBusi_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getCard_type()Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardTypeEnum;->getMemo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getSerl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getCash()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->f:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->g:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getParams()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "name"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->n:Landroid/widget/TextView;

    const-string/jumbo v0, "name"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->e:Landroid/view/View;

    return-object v0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->f:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->l:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getCash()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "\u5143"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->g:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->m:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getCount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "\u6b21"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
