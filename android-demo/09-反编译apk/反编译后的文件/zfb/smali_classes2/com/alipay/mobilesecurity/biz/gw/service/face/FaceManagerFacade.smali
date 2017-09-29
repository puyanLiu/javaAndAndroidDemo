.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/face/FaceManagerFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract applyToken(Lcom/alipay/mobilesecurity/core/model/account/face/FaceReq;)Lcom/alipay/mobilesecurity/core/model/account/face/FaceResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.faceManager.applyToken"
    .end annotation
.end method

.method public abstract applyVerifyId(Lcom/alipay/mobilesecurity/core/model/face/FaceVerifyIdApplyReq;)Lcom/alipay/mobilesecurity/core/model/face/FaceVerifyIdApplyRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.face.applyVerifyId"
    .end annotation
.end method

.method public abstract closeFaceLogin(Lcom/alipay/mobilesecurity/core/model/account/face/FaceReq;)Lcom/alipay/mobilesecurity/core/model/account/face/FaceResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.faceManager.closeFaceLogin"
    .end annotation
.end method

.method public abstract closedFace(Lcom/alipay/mobilesecurity/core/model/face/FaceCloseReq;)Lcom/alipay/mobilesecurity/core/model/face/FaceCloseRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.face.closedFace"
    .end annotation
.end method

.method public abstract collectFace(Lcom/alipay/mobilesecurity/core/model/face/FaceCollectReq;)Lcom/alipay/mobilesecurity/core/model/face/FaceCollectRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.face.collectFace"
    .end annotation
.end method

.method public abstract openFace(Lcom/alipay/mobilesecurity/core/model/face/FaceOpenReq;)Lcom/alipay/mobilesecurity/core/model/face/FaceOpenRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.face.openFace"
    .end annotation
.end method

.method public abstract openFaceLogin(Lcom/alipay/mobilesecurity/core/model/account/face/FaceReq;)Lcom/alipay/mobilesecurity/core/model/account/face/FaceResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.faceManager.openFaceLogin"
    .end annotation
.end method

.method public abstract queryFaceEntrance(Lcom/alipay/mobilesecurity/core/model/account/face/FaceReq;)Lcom/alipay/mobilesecurity/core/model/account/face/FaceResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.faceManager.queryFaceEntrance"
    .end annotation
.end method

.method public abstract queryFaceInfo(Lcom/alipay/mobilesecurity/core/model/account/face/FaceReq;)Lcom/alipay/mobilesecurity/core/model/account/face/FaceResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.faceManager.queryFaceInfo"
    .end annotation
.end method

.method public abstract queryFaceInfo(Lcom/alipay/mobilesecurity/core/model/face/FaceInfoQueryReq;)Lcom/alipay/mobilesecurity/core/model/face/FaceInfoQueryRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.face.queryFaceInfo"
    .end annotation
.end method

.method public abstract queryShowFaceEntrance(Lcom/alipay/mobilesecurity/core/model/face/ShowFaceEntranceQueryReq;)Lcom/alipay/mobilesecurity/core/model/face/ShowFaceEntranceQueryRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.face.queryShowFaceEntrance"
    .end annotation
.end method
