.class public Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "MsgboxAppActivity.java"


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field protected a:Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;

.field protected b:Lcom/alipay/mobile/commonui/widget/APSwitchTab;

.field c:I

.field d:I

.field protected e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private h:Z

.field private i:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

.field private j:Lcom/alipay/android/phone/messageboxapp/ui/o;

.field private k:Lcom/alipay/android/phone/messageboxapp/ui/h;

.field private l:Lcom/alipay/android/phone/messageboxapp/ui/h;

.field private m:Lcom/alipay/android/phone/messageboxstatic/api/OverdueService;

.field private n:Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->f:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->h:Z

    .line 45
    iput v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->c:I

    .line 46
    iput v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->d:I

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/mobile/mpass/badge/ui/BadgeView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->i:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;Lcom/alipay/android/phone/messageboxapp/ui/o;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->j:Lcom/alipay/android/phone/messageboxapp/ui/o;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;Lcom/alipay/mobile/mpass/badge/ui/BadgeView;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->i:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 390
    new-instance v0, Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-direct {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->k:Lcom/alipay/android/phone/messageboxapp/ui/h;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "msgType"

    const-string/jumbo v2, "TODO"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "date"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->k:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->k:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-direct {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->l:Lcom/alipay/android/phone/messageboxapp/ui/h;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "msgType"

    const-string/jumbo v2, "NOTICE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "date"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->l:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->l:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->h:Z

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxapp/ui/h;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->l:Lcom/alipay/android/phone/messageboxapp/ui/h;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxapp/ui/h;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->k:Lcom/alipay/android/phone/messageboxapp/ui/h;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->h:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxstatic/api/OverdueService;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->m:Lcom/alipay/android/phone/messageboxstatic/api/OverdueService;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->n:Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxapp/ui/o;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->j:Lcom/alipay/android/phone/messageboxapp/ui/o;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b:Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->setVisibility(I)V

    .line 431
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 144
    if-nez p1, :cond_2

    .line 145
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->k:Lcom/alipay/android/phone/messageboxapp/ui/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->k:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/messageboxapp/R$string;->edit:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 148
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 151
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    goto :goto_0

    .line 154
    :cond_2
    if-ne p1, v2, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->l:Lcom/alipay/android/phone/messageboxapp/ui/h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->l:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/messageboxapp/R$string;->edit:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 159
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    goto :goto_0

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 162
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 418
    const-string/jumbo v0, "NOTICE"

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->d:I

    if-lez v0, :cond_0

    .line 420
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->d:I

    .line 421
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->i:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    sget-object v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->POINT:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    iget v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V

    .line 425
    :cond_0
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->f:Ljava/lang/String;

    const-string/jumbo v2, "onCreate"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/alipay/mmmbbbxxx/a/a;->a()Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->n:Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    .line 97
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->m:Lcom/alipay/android/phone/messageboxstatic/api/OverdueService;

    .line 98
    sget v0, Lcom/alipay/android/phone/messageboxapp/R$layout;->list_activity:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->setContentView(I)V

    sget v0, Lcom/alipay/android/phone/messageboxapp/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/alipay/android/phone/messageboxapp/R$id;->tab_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b:Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    sget v0, Lcom/alipay/android/phone/messageboxapp/R$id;->content_viewPager:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a:Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a:Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;->a()V

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b:Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    new-instance v1, Lcom/alipay/android/phone/messageboxapp/ui/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/messageboxapp/ui/a;-><init>(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->setTabSwitchListener(Lcom/alipay/mobile/commonui/widget/APSwitchTab$TabSwitchListener;)V

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/messageboxapp/R$string;->message_center:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/messageboxapp/R$string;->edit:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/messageboxapp/ui/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/messageboxapp/ui/b;-><init>(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setLeftButtonText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/android/phone/messageboxapp/ui/c;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/messageboxapp/ui/c;-><init>(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->startProgressBar()V

    new-instance v0, Lcom/alipay/android/phone/messageboxapp/ui/d;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/messageboxapp/ui/d;-><init>(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 100
    return-void

    .line 97
    :cond_0
    const-class v1, Lcom/alipay/android/phone/messageboxstatic/api/OverdueService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/OverdueService;

    goto/16 :goto_0
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
