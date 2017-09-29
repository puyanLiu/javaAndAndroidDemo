.class final Lcom/alipay/mobile/socialsdk/contact/view/d;
.super Ljava/lang/Object;
.source "AddFriendVarifyDialog.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickPositiveListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/view/d;->a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/view/d;->b:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/view/d;)Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/d;->a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    return-object v0
.end method


# virtual methods
.method public final onClick(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/d;->a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->b(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;)V

    .line 153
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/view/e;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/d;->b:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v0, p0, v1, p1}, Lcom/alipay/mobile/socialsdk/contact/view/e;-><init>(Lcom/alipay/mobile/socialsdk/contact/view/d;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method
