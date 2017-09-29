.class final Lcom/alipay/mobile/socialsdk/contact/view/b;
.super Ljava/lang/Object;
.source "AddFriendVarifyDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/view/b;->a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/view/b;->b:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/view/b;->c:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/b;->a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/b;->b:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/view/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Ljava/lang/String;)V

    .line 95
    return-void
.end method
