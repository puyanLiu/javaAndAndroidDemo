.class final Lcom/alipay/mobile/socialsdk/contact/data/c;
.super Ljava/lang/Object;
.source "OldContactsServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/contact/AccountSelectCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;Lcom/alipay/mobile/framework/service/ext/contact/AccountSelectCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/data/c;->a:Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/data/c;->b:Lcom/alipay/mobile/framework/service/ext/contact/AccountSelectCallback;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleNextOperation(ILandroid/app/Activity;Landroid/view/View;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/c;->b:Lcom/alipay/mobile/framework/service/ext/contact/AccountSelectCallback;

    invoke-interface {v0, p4}, Lcom/alipay/mobile/framework/service/ext/contact/AccountSelectCallback;->onAccountReturned(Ljava/util/List;)V

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/c;->a:Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;->a(Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;)V

    .line 109
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/c;->b:Lcom/alipay/mobile/framework/service/ext/contact/AccountSelectCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/service/ext/contact/AccountSelectCallback;->onAccountReturned(Ljava/util/List;)V

    goto :goto_0
.end method
