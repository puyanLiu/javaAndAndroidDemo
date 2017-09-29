.class final Lcom/alipay/mobile/socialsdk/bizdata/data/t;
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
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/t;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/r;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/t;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/t;->c:Ljava/lang/String;

    iput p4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/t;->d:I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/t;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/r;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/r;->a(Lcom/alipay/mobile/socialsdk/bizdata/data/r;)Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/t;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/t;->c:Ljava/lang/String;

    iget v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/t;->d:I

    invoke-static {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->access$2(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;Ljava/util/List;Ljava/lang/String;ILjava/util/List;)V

    .line 55
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/t;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/r;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/r;->a(Lcom/alipay/mobile/socialsdk/bizdata/data/r;)Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    const-string/jumbo v0, "group"

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/t;->c:Ljava/lang/String;

    .line 55
    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
