;;;; gstreamer.lisp

;;;; Copyright (C) 2023 Bohong Huang
;;;;
;;;; This program is free software: you can redistribute it and/or modify
;;;; it under the terms of the GNU Lesser General Public License as published by
;;;; the Free Software Foundation, either version 3 of the License, or
;;;; (at your option) any later version.
;;;;
;;;; This program is distributed in the hope that it will be useful,
;;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;;; GNU Lesser General Public License for more details.
;;;;
;;;; You should have received a copy of the GNU Lesser General Public License
;;;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

(cl:defpackage gst-check
  (:use))

(cl:in-package #:gst-check)

(gir-wrapper:define-gir-namespace "GstCheck" "1.0")

(cl:defpackage gst-controller
  (:use))

(cl:in-package #:gst-controller)

(gir-wrapper:define-gir-namespace "GstController" "1.0")

(cl:defpackage gst-net
  (:use))

(cl:in-package #:gst-net)

(gir-wrapper:define-gir-namespace "GstNet" "1.0")

(uiop:define-package gstreamer
  (:use)
  (:nicknames #:gst)
  (:use-reexport #:gst-check #:gst-controller #:gst-net))

(cl:in-package #:gst)

(gir-wrapper:define-gir-namespace "Gst" "1.0")
