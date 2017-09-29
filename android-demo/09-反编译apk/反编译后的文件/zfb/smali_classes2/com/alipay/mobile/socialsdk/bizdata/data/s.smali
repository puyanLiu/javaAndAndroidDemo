.class final Lcom/alipay/mobile/socialsdk/bizdata/data/s;
.super Ljava/lang/Object;
.source "SocialQueryListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/bizdata/data/r;

.field private final synthetic b:Ljava/util/List;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/data/r;Ljava/util/List;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/s;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/r;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/s;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/s;->c:Ljava/lang/String;

    iput p4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/s;->d:I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/s;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/r;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/r;->a(Lcom/alipay/mobile/socialsdk/bizdata/data/r;)Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/s;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/s;->c:Ljava/lang/String;

    iget v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/s;->d:I

    invoke-static {v2, v0, v3, v4, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->access$1(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;ILjava/util/List;)V

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/s;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/r;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/r;->a(Lcom/alipay/mobile/socialsdk/bizdata/data/r;)Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    move-result-object v0

    .line 41
    const-string/jumbo v2, "contact"

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/s;->c:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
