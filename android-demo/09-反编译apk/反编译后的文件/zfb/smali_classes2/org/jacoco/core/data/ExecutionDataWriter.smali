.class public Lorg/jacoco/core/data/ExecutionDataWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jacoco/core/data/IExecutionDataVisitor;
.implements Lorg/jacoco/core/data/ISessionInfoVisitor;


# static fields
.field public static final BLOCK_EXECUTIONDATA:B = 0x11t

.field public static final BLOCK_HEADER:B = 0x1t

.field public static final BLOCK_SESSIONINFO:B = 0x10t

.field public static final FORMAT_VERSION:C = '\u1006'

.field public static final MAGIC_NUMBER:C = '\uc0c0'


# instance fields
.field protected final out:Lorg/jacoco/core/internal/data/CompactDataOutput;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jacoco/core/internal/data/CompactDataOutput;

    invoke-direct {v0, p1}, Lorg/jacoco/core/internal/data/CompactDataOutput;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/jacoco/core/data/ExecutionDataWriter;->out:Lorg/jacoco/core/internal/data/CompactDataOutput;

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataWriter;->out:Lorg/jacoco/core/internal/data/CompactDataOutput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeByte(I)V

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataWriter;->out:Lorg/jacoco/core/internal/data/CompactDataOutput;

    const v1, 0xc0c0

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeChar(I)V

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataWriter;->out:Lorg/jacoco/core/internal/data/CompactDataOutput;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeChar(I)V

    return-void
.end method

.method public static final getFileHeader()[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Lorg/jacoco/core/data/ExecutionDataWriter;

    invoke-direct {v1, v0}, Lorg/jacoco/core/data/ExecutionDataWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataWriter;->out:Lorg/jacoco/core/internal/data/CompactDataOutput;

    invoke-virtual {v0}, Lorg/jacoco/core/internal/data/CompactDataOutput;->flush()V

    return-void
.end method

.method public visitClassExecution(Lorg/jacoco/core/data/ExecutionData;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataWriter;->out:Lorg/jacoco/core/internal/data/CompactDataOutput;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeByte(I)V

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataWriter;->out:Lorg/jacoco/core/internal/data/CompactDataOutput;

    invoke-virtual {p1}, Lorg/jacoco/core/data/ExecutionData;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeLong(J)V

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataWriter;->out:Lorg/jacoco/core/internal/data/CompactDataOutput;

    invoke-virtual {p1}, Lorg/jacoco/core/data/ExecutionData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataWriter;->out:Lorg/jacoco/core/internal/data/CompactDataOutput;

    invoke-virtual {p1}, Lorg/jacoco/core/data/ExecutionData;->getProbes()[Z

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeBooleanArray([Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public visitSessionInfo(Lorg/jacoco/core/data/SessionInfo;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataWriter;->out:Lorg/jacoco/core/internal/data/CompactDataOutput;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeByte(I)V

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataWriter;->out:Lorg/jacoco/core/internal/data/CompactDataOutput;

    invoke-virtual {p1}, Lorg/jacoco/core/data/SessionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataWriter;->out:Lorg/jacoco/core/internal/data/CompactDataOutput;

    invoke-virtual {p1}, Lorg/jacoco/core/data/SessionInfo;->getStartTimeStamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeLong(J)V

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataWriter;->out:Lorg/jacoco/core/internal/data/CompactDataOutput;

    invoke-virtual {p1}, Lorg/jacoco/core/data/SessionInfo;->getDumpTimeStamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
