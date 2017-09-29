.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;
.super Ljava/lang/Object;
.source "MoreChatMessageActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;)Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;

    return-object v0
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4

    .prologue
    .line 68
    packed-switch p2, :pswitch_data_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;)Lcom/alipay/android/phone/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->c(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->a(Z)V

    .line 78
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->d(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/t;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/t;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;)V

    .line 85
    const-wide/16 v2, 0x3e8

    .line 78
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
