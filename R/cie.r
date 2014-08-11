#' Definition of CIE weighted waveband
#' 
#' Erythema BSWF
#' 
#' @usage CIE(norm=298)
#' @param norm normalization wavelength (nm)
#' @return a list defining the wavelength range, weighting and normalization
#' @references
#' Webb, A. (20XX)
#' 
#' @export
#' @seealso \code{\link{photon_irradiance}} and \code{\link{energy_irradiance}}
#' @examples
#' CIE()
#' CIE(300)

CIE <- function(norm=298) {
  new_waveband(w.low=250, w.high=400, 
               weight="SWF", SWF.e.fun=CIE.e.fun, SWF.norm=298, 
               norm=norm, hinges=c(249.99, 250, 298, 328, 399.99, 400), 
               wb.name=paste("CIE98", as.character(norm), sep="."), wb.label="CIE98")
}