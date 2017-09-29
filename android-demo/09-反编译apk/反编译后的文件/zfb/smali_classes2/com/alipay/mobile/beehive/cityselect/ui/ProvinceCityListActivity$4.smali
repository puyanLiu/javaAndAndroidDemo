.class Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$4;
.super Ljava/lang/Object;
.source "ProvinceCityListActivity.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/cityselect/ui/LocationDataChangeListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$4;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$4;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-static {v0, p1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$17(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;Ljava/util/List;)V

    .line 314
    return-void
.end method
