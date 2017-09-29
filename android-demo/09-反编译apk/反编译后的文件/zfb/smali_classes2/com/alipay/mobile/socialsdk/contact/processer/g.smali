.class final Lcom/alipay/mobile/socialsdk/contact/processer/g;
.super Ljava/lang/Object;
.source "AccountQueryHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/g;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/g;->b:Ljava/util/List;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 180
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/g;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/g;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/common/service/facade/result/SearchResultVO;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->conversion(Lcom/alipay/mobilerelation/common/service/facade/result/SearchResultVO;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/g;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->onAccountReturned(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Z)V

    .line 182
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 183
    return-void
.end method
