.class final Lcom/alipay/mobile/socialsdk/api/view/a;
.super Ljava/lang/Object;
.source "FriendsChooseWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/a;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/a;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->d(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/a;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->e(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)V

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/a;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->f(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;)Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$drawable;->chat_msg_inputbox_focused:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setBackgroundResource(I)V

    .line 89
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
