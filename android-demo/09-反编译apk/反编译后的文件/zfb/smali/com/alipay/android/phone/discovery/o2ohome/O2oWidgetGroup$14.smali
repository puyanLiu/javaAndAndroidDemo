.class Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

.field private final synthetic val$result:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->val$result:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    .line 1132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->val$result:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->getTemplateInfo(Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)Ljava/util/Map;

    move-result-object v0

    .line 1136
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$15(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;-><init>(Landroid/content/Context;)V

    .line 1137
    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;->buildTemplate(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1138
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$15(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14$1;

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->val$result:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    invoke-direct {v2, p0, v0, v3}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;Ljava/util/Map;Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1149
    return-void
.end method
