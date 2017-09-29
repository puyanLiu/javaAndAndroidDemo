.class final Lcom/alipay/mobile/socialsdk/contact/processer/a;
.super Ljava/lang/Object;
.source "AccountQueryHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/a;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/a;->b:Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 56
    new-instance v0, Lcom/alipay/mobilerelation/biz/shared/req/SearchContactReq;

    invoke-direct {v0}, Lcom/alipay/mobilerelation/biz/shared/req/SearchContactReq;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilerelation/biz/shared/req/SearchContactReq;->searchString:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/a;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->a(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilerelation/biz/shared/req/SearchContactReq;->scheme:Ljava/lang/String;

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/a;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->b(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;)Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;->searchContactV2(Lcom/alipay/mobilerelation/biz/shared/req/SearchContactReq;)Lcom/alipay/mobilerelation/biz/shared/resp/SearchContactV2Result;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/a;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->c(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;)V

    .line 62
    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/a;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->onAccountReturned(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Z)V

    .line 94
    :goto_0
    return-void

    .line 64
    :cond_0
    iget v1, v0, Lcom/alipay/mobilerelation/biz/shared/resp/SearchContactV2Result;->resultCode:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    .line 65
    iget-object v1, v0, Lcom/alipay/mobilerelation/biz/shared/resp/SearchContactV2Result;->searchResultVOList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 66
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/a;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    iget-object v0, v0, Lcom/alipay/mobilerelation/biz/shared/resp/SearchContactV2Result;->searchResultVOList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/common/service/facade/result/SearchResultVO;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->conversion(Lcom/alipay/mobilerelation/common/service/facade/result/SearchResultVO;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/a;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->onAccountReturned(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Z)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/a;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->c(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;)V

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/a;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    invoke-virtual {v1, v4, v3}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->onAccountReturned(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Z)V

    .line 89
    throw v0

    .line 70
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/a;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->d(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;)Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/processer/b;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/socialsdk/contact/processer/b;-><init>(Lcom/alipay/mobile/socialsdk/contact/processer/a;Lcom/alipay/mobilerelation/biz/shared/resp/SearchContactV2Result;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 91
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/a;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->c(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;)V

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/a;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    invoke-virtual {v0, v4, v3}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->onAccountReturned(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Z)V

    goto :goto_0

    .line 80
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/a;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->e(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/a;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    iget-object v0, v0, Lcom/alipay/mobilerelation/biz/shared/resp/SearchContactV2Result;->resultDesc:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->a(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/a;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->onAccountReturned(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Z)V
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method
