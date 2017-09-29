.class public Lcom/alipay/mobile/nebulacore/view/H5Tip;
.super Ljava/lang/Object;
.source "H5Tip.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5Tip"

.field static a:Landroid/os/Handler;

.field static b:Ljava/lang/Runnable;

.field private static volatile c:Landroid/widget/PopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    .line 29
    sput-object v0, Lcom/alipay/mobile/nebulacore/view/H5Tip;->a:Landroid/os/Handler;

    .line 31
    sput-object v0, Lcom/alipay/mobile/nebulacore/view/H5Tip;->b:Ljava/lang/Runnable;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissTip()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 88
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5Tip;->a:Landroid/os/Handler;

    sget-object v1, Lcom/alipay/mobile/nebulacore/view/H5Tip;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    sput-object v3, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    .line 95
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    :try_start_1
    const-string/jumbo v1, "H5Tip"

    const-string/jumbo v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    sput-object v3, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    sput-object v3, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    .line 94
    throw v0
.end method

.method public static showTip(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    move v2, v3

    .line 36
    :goto_0
    const-class v1, Lcom/alipay/mobile/nebulacore/view/H5Tip;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    monitor-exit v1

    .line 82
    :goto_1
    return-void

    :cond_0
    move v2, v4

    .line 35
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Lcom/alipay/mobile/nebulacore/R$layout;->h5_tip:I

    .line 41
    const/4 v6, 0x0

    .line 40
    invoke-virtual {v0, v5, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 42
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    .line 43
    const/4 v7, -0x2

    const/4 v8, 0x0

    .line 42
    invoke-direct {v0, v5, v6, v7, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    sget v0, Lcom/alipay/mobile/nebulacore/R$id;->false_image:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 50
    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->h5_description:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 49
    check-cast v1, Landroid/widget/TextView;

    .line 51
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_2
    sget-object v1, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 55
    sget-object v1, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 56
    sget-object v1, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 58
    if-nez v2, :cond_3

    .line 59
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    :goto_2
    new-instance v1, Lcom/alipay/mobile/nebulacore/view/H5Tip$1;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/view/H5Tip$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance v0, Lcom/alipay/mobile/nebulacore/view/H5Tip$2;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/view/H5Tip$2;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/view/H5Tip;->b:Ljava/lang/Runnable;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    sput-object v0, Lcom/alipay/mobile/nebulacore/view/H5Tip;->a:Landroid/os/Handler;

    sget-object v1, Lcom/alipay/mobile/nebulacore/view/H5Tip;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 61
    :cond_3
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/nebulacore/view/H5Tip;->c:Landroid/widget/PopupWindow;

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 63
    :catch_0
    move-exception v1

    .line 64
    const-string/jumbo v2, "H5Tip"

    const-string/jumbo v3, "exception detail."

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
