.class public Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;
.super Ljava/lang/Object;
.source "IPCParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IPCParameter"


# instance fields
.field public className:Ljava/lang/String;

.field public methodName:Ljava/lang/String;

.field public paramTypes:[Ljava/lang/String;

.field public paramValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public returnType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->className:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->methodName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->className:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->methodName:Ljava/lang/String;

    .line 37
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->readFromParcel(Landroid/os/Parcel;)V

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    .line 48
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->className:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->methodName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->returnType:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramTypes:[Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramTypes:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramTypes:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramTypes:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramValues:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramValues:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "IPCParameter{className=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", methodName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", paramTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramTypes:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->className:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->methodName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->returnType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramTypes:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramTypes:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 82
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramTypes:[Ljava/lang/String;

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramTypes:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v1, v0

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramTypes:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    :cond_2
    return-void
.end method
