.class Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1;
.super Ljava/lang/Object;
.source "GlobalSearchBiz.java"

# interfaces
.implements Lcom/alipay/android/phone/globalsearch/api/QueryListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1;->this$0:Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1;)Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1;->this$0:Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;

    return-object v0
.end method


# virtual methods
.method public doQuery(Lcom/alipay/android/phone/globalsearch/api/IndexResult;)V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public doQuery(Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;-><init>(Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1;Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method public doQuery(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    return-void
.end method

.method public doQuery(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    return-void
.end method
