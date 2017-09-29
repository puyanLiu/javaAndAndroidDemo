.class public abstract Lcom/alipay/android/phone/mobilesdk/mtop/MtopService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "MtopService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract MtopInit(Landroid/content/Context;II)V
.end method

.method public abstract asyncRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputDO::",
            "Lmtopsdk/mtop/domain/IMTOPDataObject;",
            "OutputDO:",
            "Lmtopsdk/mtop/domain/BaseOutDo;",
            ">(TInputDO;",
            "Ljava/lang/Class",
            "<TOutputDO;>;",
            "Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback",
            "<TOutputDO;>;)Z"
        }
    .end annotation
.end method

.method public abstract asyncRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback;Ljava/lang/String;Lmtopsdk/mtop/domain/ProtocolEnum;ZLmtopsdk/mtop/domain/MethodEnum;ILjava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputDO::",
            "Lmtopsdk/mtop/domain/IMTOPDataObject;",
            "OutputDO:",
            "Lmtopsdk/mtop/domain/BaseOutDo;",
            ">(TInputDO;",
            "Ljava/lang/Class",
            "<TOutputDO;>;",
            "Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback",
            "<TOutputDO;>;",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/domain/ProtocolEnum;",
            "Z",
            "Lmtopsdk/mtop/domain/MethodEnum;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract isHasSession()Z
.end method

.method public abstract logout()V
.end method

.method public abstract registerSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registerSessionInfo()V
.end method

.method public abstract registerSessionInfo(Lcom/alipay/android/phone/mobilesdk/mtop/RegisterSessionListener;)V
.end method

.method public abstract setHasSession(Z)V
.end method

.method public abstract setHavanaId(Ljava/lang/String;)V
.end method

.method public abstract setUseAlipaySession(Z)V
.end method

.method public abstract switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)V
.end method

.method public abstract syncRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;)Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputDO::",
            "Lmtopsdk/mtop/domain/IMTOPDataObject;",
            "OutputDO:",
            "Lmtopsdk/mtop/domain/BaseOutDo;",
            ">(TInputDO;",
            "Ljava/lang/Class",
            "<TOutputDO;>;)",
            "Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper",
            "<TOutputDO;>;"
        }
    .end annotation
.end method

.method public abstract syncRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Ljava/lang/String;Lmtopsdk/mtop/domain/ProtocolEnum;ZLmtopsdk/mtop/domain/MethodEnum;ILjava/util/Map;)Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputDO::",
            "Lmtopsdk/mtop/domain/IMTOPDataObject;",
            "OutputDO:",
            "Lmtopsdk/mtop/domain/BaseOutDo;",
            ">(TInputDO;",
            "Ljava/lang/Class",
            "<TOutputDO;>;",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/domain/ProtocolEnum;",
            "Z",
            "Lmtopsdk/mtop/domain/MethodEnum;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper",
            "<TOutputDO;>;"
        }
    .end annotation
.end method

.method public abstract syncRequest(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
.end method
