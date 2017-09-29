.class final Lcom/alipay/mobile/socialsdk/contact/view/i;
.super Ljava/lang/Object;
.source "AddFriendVarifyDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

.field private final synthetic b:Lcom/alipay/mobile/commonui/widget/APEditText;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;Lcom/alipay/mobile/commonui/widget/APEditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/view/i;->a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/view/i;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/i;->a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;)Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/i;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->showKeyBoard(Landroid/app/Activity;Landroid/view/View;)V

    .line 229
    return-void
.end method
