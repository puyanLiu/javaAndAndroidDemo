.class final Lcom/alipay/android/phone/home/ui/ae;
.super Ljava/lang/Object;
.source "HomeFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/ad;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/ad;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/ae;->a:Lcom/alipay/android/phone/home/ui/ad;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/ae;->b:Ljava/util/List;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 267
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "notify, "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ae;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ae;->a:Lcom/alipay/android/phone/home/ui/ad;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/ad;->a(Lcom/alipay/android/phone/home/ui/ad;)Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/ae;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->b(Ljava/util/List;)V

    .line 270
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ae;->a:Lcom/alipay/android/phone/home/ui/ad;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/ad;->a(Lcom/alipay/android/phone/home/ui/ad;)Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->d()V

    .line 271
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ae;->a:Lcom/alipay/android/phone/home/ui/ad;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/ad;->a(Lcom/alipay/android/phone/home/ui/ad;)Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->notifyDataSetChanged()V

    .line 272
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ae;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
