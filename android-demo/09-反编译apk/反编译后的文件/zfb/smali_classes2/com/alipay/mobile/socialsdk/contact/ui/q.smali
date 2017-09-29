.class final Lcom/alipay/mobile/socialsdk/contact/ui/q;
.super Ljava/lang/Object;
.source "FriendVerifyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/q;->a:Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/q;->a:Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/q;->a:Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/q;->a:Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->sendVerify(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    return-void
.end method
