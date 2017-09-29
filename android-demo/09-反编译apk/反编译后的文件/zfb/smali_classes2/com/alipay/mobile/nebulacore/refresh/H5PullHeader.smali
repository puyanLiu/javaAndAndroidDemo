.class public Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;
.super Landroid/widget/RelativeLayout;
.source "H5PullHeader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PullHeader"

.field public static final TIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method private a()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 72
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 74
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 76
    sget v2, Lcom/alipay/mobile/nebulacore/R$string;->last_refresh:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 75
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 40
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "must set id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    sget v0, Lcom/alipay/mobile/nebulacore/R$id;->pullrefresh_progress:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;->a:Landroid/widget/ProgressBar;

    .line 45
    sget v0, Lcom/alipay/mobile/nebulacore/R$id;->pullrefresh_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;->b:Landroid/widget/TextView;

    .line 46
    sget v0, Lcom/alipay/mobile/nebulacore/R$id;->pullrefresh_summary:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;->c:Landroid/widget/TextView;

    .line 47
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;->a()V

    .line 48
    return-void
.end method

.method public showFinish()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 66
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;->a()V

    .line 67
    return-void
.end method

.method public showLoading()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;->b:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/nebulacore/R$string;->refreshing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 62
    return-void
.end method

.method public showOpen()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;->b:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/nebulacore/R$string;->pull_can_refresh:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 53
    return-void
.end method

.method public showOver()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullHeader;->b:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/nebulacore/R$string;->release_to_refresh:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    return-void
.end method
