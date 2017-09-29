.class Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$2;
.super Ljava/lang/Object;
.source "H5SessionPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

.field private final synthetic b:Lcom/alibaba/fastjson/JSONObject;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;Lcom/alibaba/fastjson/JSONObject;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$2;->a:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$2;->b:Lcom/alibaba/fastjson/JSONObject;

    iput p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$2;->c:I

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$2;->a:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$2;->b:Lcom/alibaba/fastjson/JSONObject;

    iget v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$2;->c:I

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;Lcom/alibaba/fastjson/JSONObject;I)Z

    .line 344
    return-void
.end method
