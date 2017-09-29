.class Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$6;
.super Ljava/lang/Object;
.source "DynamicTemplateServiceImpl.java"

# interfaces
.implements Lcom/alipay/android/app/template/service/DynamicTemplateService$TplFilter;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$6;->a:Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;

    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1105
    const-string/jumbo v0, "QUICKPAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
