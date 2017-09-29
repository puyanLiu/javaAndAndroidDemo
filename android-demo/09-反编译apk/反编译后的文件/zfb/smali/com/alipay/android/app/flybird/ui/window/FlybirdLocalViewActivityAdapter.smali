.class public Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;
.super Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

# interfaces
.implements Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;
    }
.end annotation


# instance fields
.field public a:I

.field private b:Landroid/app/Activity;

.field private c:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/app/Dialog;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/View;

.field private g:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

.field private h:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

.field private i:Landroid/content/DialogInterface;

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a:I

    .line 63
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->c:Ljava/util/Stack;

    .line 65
    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->e:Landroid/widget/ImageView;

    .line 67
    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->f:Landroid/view/View;

    .line 69
    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->h:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    .line 72
    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->k:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    .line 204
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->d:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->d:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->i:Landroid/content/DialogInterface;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->e:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->g:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 151
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    const-string/jumbo v1, "local_view_layout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 153
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 155
    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 159
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private b(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 112
    const-string/jumbo v1, "CallingPid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a:I

    .line 114
    :try_start_0
    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a:I

    if-nez v1, :cond_1

    .line 115
    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v2, "no biz id(18)"

    invoke-direct {v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :catch_0
    move-exception v1

    .line 129
    const-string/jumbo v2, "ex"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/helper/MspConfig;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->setRsaPublicKey(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/base/trade/TradeManager;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->a()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->c(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v1

    .line 124
    invoke-virtual {v1, p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->onLocalViewWindowLoaded(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    const-string/jumbo v0, "setting-home"

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V

    iput-object v0, v1, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->a:Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a:I

    invoke-direct {v0, v2, v3, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;-><init>(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    iput-object v0, v1, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->c:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->h:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->d()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a(Landroid/view/View;)V

    .line 136
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->h:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->g:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Landroid/content/DialogInterface;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->i:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->e:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 487
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method public final a(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 76
    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    .line 77
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 79
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    const-string/jumbo v2, "flybird_local_view_layout"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 82
    if-eqz p1, :cond_4

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a:I

    if-nez v1, :cond_0

    const-string/jumbo v1, "CallingPid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a:I

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->dispose()V

    .line 87
    :cond_2
    return-void

    .line 82
    :cond_3
    iget v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;ILcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/s;

    invoke-direct {v1, p0, p3}, Lcom/alipay/android/app/flybird/ui/window/s;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 278
    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;)V
    .locals 1

    .prologue
    .line 252
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->j:Ljava/lang/ref/WeakReference;

    .line 253
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->h:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    if-eqz v0, :cond_0

    .line 515
    if-eqz p1, :cond_1

    const-string/jumbo v0, "status=0003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v0, "status=0009"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->dispose()V

    goto :goto_0

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->h:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->c()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 397
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/sys/GlobalContext;->a(Z)V

    .line 398
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/x;

    invoke-direct {v1, p0, p2, p1}, Lcom/alipay/android/app/flybird/ui/window/x;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 419
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 9

    .prologue
    .line 334
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/sys/GlobalContext;->a(Z)V

    .line 338
    iget-object v8, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/u;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p6

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/flybird/ui/window/u;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    return-void
.end method

.method public final varargs a([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/t;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/flybird/ui/window/t;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->h:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    const/4 v0, 0x1

    .line 497
    :goto_0
    return v0

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->dispose()V

    .line 497
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 481
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 174
    const-string/jumbo v0, "setting-channel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->k:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    if-nez v0, :cond_1

    .line 176
    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V

    .line 177
    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a:I

    invoke-direct {v1, v2, v3, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;-><init>(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    .line 179
    iput-object v1, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    .line 180
    iput-object p1, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->a:Ljava/lang/String;

    .line 181
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->c:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 182
    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->h:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->h:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->d()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a(Landroid/view/View;)V

    .line 202
    :cond_0
    :goto_1
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->k:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->h:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    .line 185
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->c:Ljava/util/Stack;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->k:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_2
    const-string/jumbo v0, "setting_nopwd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V

    .line 191
    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a:I

    invoke-direct {v1, v2, v3, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;-><init>(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    .line 193
    iput-object v1, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    .line 194
    iput-object p1, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->a:Ljava/lang/String;

    .line 195
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->c:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->d()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->h:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->h:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->e:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->a(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    .line 200
    :cond_3
    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->h:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    goto :goto_1
.end method

.method public final b_()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    .line 164
    const-string/jumbo v1, "setting-channel"

    iget-object v2, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->k:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->h:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    .line 168
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->h:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->d()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a(Landroid/view/View;)V

    .line 169
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->h:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->e()V

    .line 170
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->g:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->g:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->g:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->dismiss()V

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->g:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    .line 328
    :cond_0
    return-void
.end method

.method public final c_()V
    .locals 0

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->dispose()V

    .line 530
    return-void
.end method

.method public final d()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public final d_()V
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a([Ljava/lang/String;)V

    .line 540
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 226
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b()V

    .line 227
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->D()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->k:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    .line 229
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/r;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/r;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 243
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->a:I

    invoke-static {v0}, Lcom/alipay/android/app/logic/util/ExternalinfoUtil;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V

    invoke-interface {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    .line 248
    :cond_1
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/y;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/y;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 444
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 448
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->b:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/z;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/z;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final g()Landroid/view/View;
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    return-object v0
.end method
