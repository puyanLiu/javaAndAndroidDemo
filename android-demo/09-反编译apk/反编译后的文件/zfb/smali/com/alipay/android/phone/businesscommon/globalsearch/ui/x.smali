.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;
.super Ljava/lang/Object;
.source "MorePageActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;)Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    return-object v0
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4

    .prologue
    .line 106
    packed-switch p2, :pswitch_data_0

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)V

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Lcom/alipay/android/phone/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->c(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->d(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Lcom/alipay/android/phone/a/a/b;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/android/phone/a/a/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Lcom/alipay/android/phone/a/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->c(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/a/a/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    :cond_1
    const-string/jumbo v0, "jiushi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "last : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->e(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->a(Z)V

    .line 124
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->f(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;)V

    .line 132
    const-wide/16 v2, 0x3e8

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
