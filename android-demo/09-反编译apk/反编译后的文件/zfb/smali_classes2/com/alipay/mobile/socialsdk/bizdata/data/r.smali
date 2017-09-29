.class final Lcom/alipay/mobile/socialsdk/bizdata/data/r;
.super Ljava/lang/Object;
.source "SocialQueryListener.java"

# interfaces
.implements Lcom/alipay/android/phone/globalsearch/api/ContactQueryer;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/r;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/bizdata/data/r;)Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/r;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    return-object v0
.end method


# virtual methods
.method public final doQuery(Ljava/util/List;Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 29
    packed-switch p3, :pswitch_data_0

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/r;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    move-result-object v0

    const-string/jumbo v1, "contact"

    invoke-virtual {v0, v2, v1, p2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/r;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    move-result-object v0

    const-string/jumbo v1, "group"

    invoke-virtual {v0, v2, v1, p2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 31
    :pswitch_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/r;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    move-result-object v0

    const-string/jumbo v1, "contact"

    invoke-virtual {v0, v2, v1, p2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/data/s;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/alipay/mobile/socialsdk/bizdata/data/s;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/r;Ljava/util/List;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 46
    :pswitch_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/r;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    move-result-object v0

    const-string/jumbo v1, "group"

    invoke-virtual {v0, v2, v1, p2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_3
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/data/t;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/alipay/mobile/socialsdk/bizdata/data/t;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/r;Ljava/util/List;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
