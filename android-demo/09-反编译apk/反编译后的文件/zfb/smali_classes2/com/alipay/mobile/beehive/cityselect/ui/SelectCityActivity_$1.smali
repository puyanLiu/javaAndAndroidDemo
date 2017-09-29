.class Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_$1;
.super Ljava/lang/Object;
.source "SelectCityActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;->access$001(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;)V

    .line 89
    :cond_0
    return-void
.end method
