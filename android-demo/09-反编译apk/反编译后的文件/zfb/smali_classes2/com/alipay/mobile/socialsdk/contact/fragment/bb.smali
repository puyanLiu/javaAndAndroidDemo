.class final Lcom/alipay/mobile/socialsdk/contact/fragment/bb;
.super Ljava/lang/Object;
.source "InputContactFragment.java"

# interfaces
.implements Lcom/alipay/android/phone/scancode/export/ScanCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/ba;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ba;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bb;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ba;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScanResult(ZLandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 112
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 114
    if-nez v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 119
    const/4 v0, 0x0

    .line 120
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 123
    :cond_2
    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    .line 126
    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 127
    const-string/jumbo v2, "loginId"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bb;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ba;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ba;->a(Lcom/alipay/mobile/socialsdk/contact/fragment/ba;)Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->access$1(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "key_aliaccout"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 129
    iget-object v0, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/util/BaseHelperUtil;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bb;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ba;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ba;->a(Lcom/alipay/mobile/socialsdk/contact/fragment/ba;)Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bb;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ba;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/ba;->a(Lcom/alipay/mobile/socialsdk/contact/fragment/ba;)Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->add_self_hint:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bb;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ba;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ba;->a(Lcom/alipay/mobile/socialsdk/contact/fragment/ba;)Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->toConfirmPage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
