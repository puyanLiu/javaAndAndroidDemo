.class final Lcom/alipay/mobile/socialsdk/contact/view/e;
.super Ljava/lang/Object;
.source "AddFriendVarifyDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/view/d;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/view/d;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/view/e;->a:Lcom/alipay/mobile/socialsdk/contact/view/d;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/view/e;->b:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/view/e;->c:Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/view/e;)Lcom/alipay/mobile/socialsdk/contact/view/d;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/e;->a:Lcom/alipay/mobile/socialsdk/contact/view/d;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 157
    new-instance v8, Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/e;->a:Lcom/alipay/mobile/socialsdk/contact/view/d;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/view/d;->a(Lcom/alipay/mobile/socialsdk/contact/view/d;)Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;)Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;-><init>(Landroid/app/Activity;)V

    .line 158
    const-string/jumbo v0, ""

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->showProgressDialog(Ljava/lang/String;)V

    .line 159
    const/4 v7, 0x3

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/e;->a:Lcom/alipay/mobile/socialsdk/contact/view/d;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/view/d;->a(Lcom/alipay/mobile/socialsdk/contact/view/d;)Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/e;->b:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/view/e;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Ljava/lang/String;Z)Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;

    move-result-object v2

    .line 163
    if-eqz v2, :cond_1

    .line 164
    iget v0, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultCode:I
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 165
    const/4 v7, 0x2

    move v1, v7

    .line 179
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/e;->a:Lcom/alipay/mobile/socialsdk/contact/view/d;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/view/d;->a(Lcom/alipay/mobile/socialsdk/contact/view/d;)Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;I)V

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/e;->a:Lcom/alipay/mobile/socialsdk/contact/view/d;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/view/d;->a(Lcom/alipay/mobile/socialsdk/contact/view/d;)Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->clean()V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    .line 166
    :cond_0
    :try_start_2
    iget v0, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultCode:I

    const/16 v1, 0x144

    if-ne v0, v1, :cond_1

    iget-object v0, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultDesc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/e;->a:Lcom/alipay/mobile/socialsdk/contact/view/d;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/view/d;->a(Lcom/alipay/mobile/socialsdk/contact/view/d;)Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;)Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, v2, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultDesc:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/view/e;->a:Lcom/alipay/mobile/socialsdk/contact/view/d;

    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/contact/view/d;->a(Lcom/alipay/mobile/socialsdk/contact/view/d;)Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;)Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->confirm:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/view/f;

    invoke-direct {v4, p0, v8}, Lcom/alipay/mobile/socialsdk/contact/view/f;-><init>(Lcom/alipay/mobile/socialsdk/contact/view/e;Lcom/alipay/mobile/framework/app/ui/DialogHelper;)V

    .line 175
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 168
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 182
    :catch_0
    move-exception v0

    move v1, v7

    .line 183
    :goto_2
    invoke-virtual {v8}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    .line 184
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/view/e;->a:Lcom/alipay/mobile/socialsdk/contact/view/d;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/contact/view/d;->a(Lcom/alipay/mobile/socialsdk/contact/view/d;)Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;I)V

    .line 185
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/e;->a:Lcom/alipay/mobile/socialsdk/contact/view/d;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/view/d;->a(Lcom/alipay/mobile/socialsdk/contact/view/d;)Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->clean()V

    .line 186
    throw v0

    .line 182
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    move v1, v7

    goto :goto_0
.end method
