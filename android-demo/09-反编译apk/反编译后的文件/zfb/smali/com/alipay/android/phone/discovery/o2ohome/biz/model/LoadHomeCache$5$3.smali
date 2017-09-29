.class Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$3;
.super Ljava/lang/Object;
.source "LoadHomeCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$3;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5$3;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$5;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;->onHomePageCacheFinish()V

    .line 209
    return-void
.end method
