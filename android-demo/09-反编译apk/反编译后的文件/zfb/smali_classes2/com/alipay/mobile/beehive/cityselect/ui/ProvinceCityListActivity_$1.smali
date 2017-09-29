.class Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$1;
.super Ljava/lang/Object;
.source "ProvinceCityListActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;

.field final synthetic val$city:Ljava/lang/String;

.field final synthetic val$country:Ljava/lang/String;

.field final synthetic val$index:I

.field final synthetic val$province:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;

    iput p2, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$1;->val$type:I

    iput p3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$1;->val$index:I

    iput-object p4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$1;->val$country:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$1;->val$province:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$1;->val$city:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;

    iget v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$1;->val$type:I

    iget v2, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$1;->val$index:I

    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$1;->val$country:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$1;->val$province:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$1;->val$city:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;->access$001(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method
