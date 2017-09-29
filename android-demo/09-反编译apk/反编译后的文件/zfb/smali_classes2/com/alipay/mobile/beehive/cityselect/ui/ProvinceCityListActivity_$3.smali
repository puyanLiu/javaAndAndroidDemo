.class Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$3;
.super Ljava/lang/Object;
.source "ProvinceCityListActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$3;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$3;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$3;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;->access$201(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;)V

    .line 111
    :cond_0
    return-void
.end method
