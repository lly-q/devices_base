.class public final synthetic Lcom/android/server/wifi/scanner/-$$Lambda$WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState$IadGqqQgFfoD3kqhYRHB92f1PGI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wifi/scanner/-$$Lambda$WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState$IadGqqQgFfoD3kqhYRHB92f1PGI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wifi/scanner/-$$Lambda$WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState$IadGqqQgFfoD3kqhYRHB92f1PGI;

    invoke-direct {v0}, Lcom/android/server/wifi/scanner/-$$Lambda$WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState$IadGqqQgFfoD3kqhYRHB92f1PGI;-><init>()V

    sput-object v0, Lcom/android/server/wifi/scanner/-$$Lambda$WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState$IadGqqQgFfoD3kqhYRHB92f1PGI;->INSTANCE:Lcom/android/server/wifi/scanner/-$$Lambda$WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState$IadGqqQgFfoD3kqhYRHB92f1PGI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;->lambda$filterCachedScanResultsByAge$1(I)[Landroid/net/wifi/ScanResult;

    move-result-object p1

    return-object p1
.end method
