.class Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$2;
.super Ljava/lang/Object;
.source "ProvinceCityListActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;

.field final synthetic val$index:I

.field final synthetic val$listIndex:I

.field final synthetic val$listTop:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;IIII)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$2;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;

    iput p2, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$2;->val$type:I

    iput p3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$2;->val$index:I

    iput p4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$2;->val$listIndex:I

    iput p5, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$2;->val$listTop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$2;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$2;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;

    iget v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$2;->val$type:I

    iget v2, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$2;->val$index:I

    iget v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$2;->val$listIndex:I

    iget v4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$2;->val$listTop:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;->access$101(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;IIII)V

    .line 95
    :cond_0
    return-void
.end method
