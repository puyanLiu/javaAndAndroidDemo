.class public Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;
.super Ljava/lang/Object;
.source "DynamicTemplateService.java"


# instance fields
.field public dynamicTemplateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

.field public id:Ljava/lang/String;

.field public pageData:Ljava/lang/String;

.field public pageDataCache:Lcom/alibaba/fastjson/JSONObject;

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/service/DynamicTemplateService;)V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;->id:Ljava/lang/String;

    .line 313
    iput-object p2, p0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;->time:Ljava/lang/String;

    .line 314
    iput-object p3, p0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;->pageData:Ljava/lang/String;

    .line 315
    iput-object p4, p0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;->dynamicTemplateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 316
    return-void
.end method
