.class public Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;
.super Ljava/lang/Object;


# instance fields
.field private time:J

.field private value:D


# direct methods
.method public constructor <init>(DJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;->value:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;->time:J

    iput-wide p1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;->value:D

    iput-wide p3, p0, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;->time:J

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;->time:J

    return-wide v0
.end method

.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;->value:D

    return-wide v0
.end method
