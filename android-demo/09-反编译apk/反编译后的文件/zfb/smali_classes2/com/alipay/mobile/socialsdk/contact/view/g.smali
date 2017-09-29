.class final Lcom/alipay/mobile/socialsdk/contact/view/g;
.super Ljava/lang/Object;
.source "AddFriendVarifyDialog.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickNegativeListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/view/g;->a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/g;->a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;I)V

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/g;->a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->clean()V

    .line 200
    return-void
.end method
