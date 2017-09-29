.class public Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;
.super Ljava/lang/Object;


# instance fields
.field private duration:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

.field private operation:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

.field private type:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;->type:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    iput-object p2, p0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;->duration:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    iput-object p3, p0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;->operation:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    return-void
.end method


# virtual methods
.method public getDuration()Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;->duration:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    return-object v0
.end method

.method public getOperation()Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;->operation:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    return-object v0
.end method

.method public getType()Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;->type:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    return-object v0
.end method
