.class final Lcom/alipay/mobile/socialsdk/contact/processer/b;
.super Ljava/lang/Object;
.source "AccountQueryHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/processer/a;

.field private final synthetic b:Lcom/alipay/mobilerelation/biz/shared/resp/SearchContactV2Result;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/processer/a;Lcom/alipay/mobilerelation/biz/shared/resp/SearchContactV2Result;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/b;->a:Lcom/alipay/mobile/socialsdk/contact/processer/a;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/b;->b:Lcom/alipay/mobilerelation/biz/shared/resp/SearchContactV2Result;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/b;->a:Lcom/alipay/mobile/socialsdk/contact/processer/a;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/processer/a;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/b;->b:Lcom/alipay/mobilerelation/biz/shared/resp/SearchContactV2Result;

    iget-object v1, v1, Lcom/alipay/mobilerelation/biz/shared/resp/SearchContactV2Result;->searchResultVOList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->a(Ljava/util/List;)V

    .line 75
    return-void
.end method
